import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;

public class cliente {

    static final String DB_URL = "jdbc:mysql://localhost:3306/taquilla?allowPublicKeyRetrieval=true&useSSL=false";
    static final String USER = "cliente";
    static final String PASS = "1234";

    public static void main(String[] args) {
        try (
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in))
        ) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            stmt.executeUpdate("USE taquilla");

            // Limpiar consola al inicio
            System.out.print("\033[H\033[2J"); 
            System.out.flush();
            String fecha, recinto, idEspectaculo, datosBancarios, ubicacion, tipoUsuario = null;
            while (true) {

                System.out.println();
                System.out.println("CONSULTAS DISPONIBLES:");
                System.out.println("1. Consultar los espectaculos");
                System.out.println("2. Consultar eventos abiertos para un espectáculo");
                System.out.println("3. Consultar precios de entradas para un evento");
                System.out.println("4. Ver eventos abiertos entre dos fechas");
                System.out.println("5. Comprar una entrada para un evento");
                System.out.println("6. Realizar una reserva para un evento");
                System.out.println("7. Anular la reserva de una entrada");
                System.out.println("8. Salir");
                System.out.print("\nSeleccione una opción: ");
                String opcion = br.readLine();

                switch (opcion) {
                    case "1":
                        ejecutarSentencia(stmt, "SELECT * FROM espectaculo");
                        break;
                    case "2":
                        ejecutarSentencia(stmt, "SELECT * FROM ESPECTACULO");
                        System.out.print("Introduzca el ID del espectáculo en el que está interesado: ");
                        idEspectaculo = br.readLine();
                        ejecutarSentencia(stmt, "SELECT * FROM vista_eventos_abiertos_para_espectaculo WHERE espectaculo_id = " + idEspectaculo);
                    break;
                    case "3":
                        ejecutarSentencia(stmt, "SELECT * FROM EVENTO where evento.estado = 'Abierto'");
                        System.out.println("Introduzca la fecha del evento: ");
                        fecha = br.readLine();
                        System.out.println("Introduzca el recinto del evento: ");
                        recinto = br.readLine();
                        System.out.println("Introduzca el id del espectáculo: ");
                        idEspectaculo = br.readLine();
                        ejecutarSentencia(stmt,
                        "SELECT * FROM vista_precio_entradas_libres_evento WHERE fecha = '" + fecha + "' AND recinto_id = '" + recinto + "' AND espectaculo_id = " + idEspectaculo);
                        break;
                    case "4":
                        System.out.println("Introduzca la primera fecha del intervalo (AAAA-MM-DD HH:MM:SS): ");
                        fecha = br.readLine();
                        System.out.println("Introduzca la segunda fecha del intervalo (AAAA-MM-DD HH:MM:SS): ");
                        String fecha_fin = br.readLine();
                        ejecutarSentencia(stmt, "SELECT * FROM vista_eventos_por_fecha WHERE fecha >= '" + fecha + "' AND fecha_fin <= '" + fecha_fin + "'");
                    break;
                    case "5":
                        System.out.println("Introduzca sus datos bancarios:");
                        datosBancarios = br.readLine();
                        
                        System.out.println("Introduzca su ubicación:");
                        ubicacion = br.readLine();
                        
                        System.out.println("Introduzca la fecha del evento (AAAA-MM-DD HH:MM:SS):");
                        fecha = br.readLine();
                        
                        System.out.println("Introduzca el recinto del evento:");
                        recinto = br.readLine();
                        
                        System.out.println("Introduzca el ID del espectáculo:");
                        idEspectaculo = br.readLine();
                        
                        System.out.println("Introduzca el tipo de usuario:");
                        tipoUsuario = br.readLine();

                        stmt.executeUpdate("INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES (" +
                            "'" + datosBancarios + "', " + "'compra', " + "'" + ubicacion + "', " +"'" + fecha + "', " + "'" + recinto + "', " + "'" + idEspectaculo + "', " + "'" + tipoUsuario + "')");
                        System.out.println("Compra realizada con éxito.");
                        break;
                    
                    case "6":
                    System.out.println("Introduzca sus datos bancarios:");
                    datosBancarios = br.readLine();
                    
                    System.out.println("Introduzca su ubicación:");
                    ubicacion = br.readLine();
                    
                    System.out.println("Introduzca la fecha del evento (AAAA-MM-DD HH:MM:SS):");
                    fecha = br.readLine();
                    
                    System.out.println("Introduzca el recinto del evento:");
                    recinto = br.readLine();
                    
                    System.out.println("Introduzca el ID del espectáculo:");
                    idEspectaculo = br.readLine();
                    
                    System.out.println("Introduzca el tipo de usuario:");
                    tipoUsuario = br.readLine();

                    stmt.executeUpdate("INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES (" +
                        "'" + datosBancarios + "', " + "'reserva', " + "'" + ubicacion + "', " +"'" + fecha + "', " + "'" + recinto + "', " + "'" + idEspectaculo + "', " + "'" + tipoUsuario + "')");
                    System.out.println("Reserva realizada con éxito.");

                    break;
                    case "7":
                        System.out.println("Introduzca sus datos bancarios:");
                        datosBancarios = br.readLine();
                        
                        System.out.println("Introduzca su ubicación:");
                        ubicacion = br.readLine();
                        
                        System.out.println("Introduzca la fecha del evento (AAAA-MM-DD HH:MM:SS):");
                        fecha = br.readLine();
                        
                        System.out.println("Introduzca el recinto del evento:");
                        recinto = br.readLine();
                        
                        System.out.println("Introduzca el ID del espectáculo:");
                        idEspectaculo = br.readLine();
                        
                        System.out.println("Introduzca el tipo de usuario:");
                        tipoUsuario = br.readLine();

                        PreparedStatement pstmt = conn.prepareStatement(
                            "UPDATE Transaccion SET estado = 'anulada' WHERE datos_bancarios = ? AND ubicacion = ? AND fecha = ? AND recinto_id = ? AND espectaculo_id = ? AND tipo_usuario = ?"
                        );
                        pstmt.setString(1, datosBancarios);
                        pstmt.setInt(2, Integer.parseInt(ubicacion));
                        pstmt.setString(3, fecha);
                        pstmt.setString(4, recinto);
                        pstmt.setInt(5, Integer.parseInt(idEspectaculo));
                        pstmt.setString(6, tipoUsuario);
                        pstmt.executeUpdate();
                        

                        System.out.println("Reserva anulada con éxito.");
                        break;
                    case "8":
                        System.out.println("Bye");
                        return;
                    default:
                        System.out.println("Opción inválida.");
                        br.readLine();
                        break;
                }
            }

        } catch (Exception e) {
            System.out.println("Error en el sistema -> " + e.toString());
        }
    }

    private static void ejecutarSentencia(Statement stmt, String query) throws SQLException {
        ResultSet rs = stmt.executeQuery(query);
        ResultSetMetaData meta = rs.getMetaData();
        int columnas = meta.getColumnCount();
    
       // System.out.println("\nResultados:");
        while (rs.next()) {
            for (int i = 1; i <= columnas; i++) {
                System.out.print(meta.getColumnName(i) + ": " + rs.getString(i) + "\t");
            }
            System.out.println();
        }
    }
    
}

