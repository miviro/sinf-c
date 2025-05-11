import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;

public class admin {
    
    static final String DB_URL = "jdbc:mysql://localhost:3306/taquilla?allowPublicKeyRetrieval=true&useSSL=false";
    static final String USER = "admin";
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
            String fecha, recinto, idEspectaculo, fechaFinEvento = null, nombreEspectaculo, tipoEspectaculo = null;

            while (true) {

                System.out.println();
                System.out.println("CONSULTAS DISPONIBLES:");
                System.out.println("1. Consultar los 10 espectáculos que más generan");
                System.out.println("2. Consultar aforo de los eventos");
                System.out.println("3. Consultar aforo para un evento concreto");
                System.out.println("4. Consultar beneficios de los eventos");
                System.out.println("5. Ver beneficios para un evento concreto");
                System.out.println("6. Introducir un espectáculo");
                System.out.println("7. Introducir un evento");
                System.out.println("8. Modificar un evento");
                System.out.println("9. Eliminar un evento");
                System.out.println("10. Salir");
                System.out.print("\nSeleccione una opción: ");
                String opcion = br.readLine();

                switch (opcion) {
                    case "1":
                        ejecutarConsulta(stmt, "SELECT * FROM Vista_top10_espectaculos");
                        break;

                    case "2":
                        ejecutarConsulta(stmt, "SELECT * FROM vista_aforo_evento");
                        break;

                    case "3":
                        System.out.println("Introduzca la fecha del evento: ");
                        fecha = br.readLine();
                        System.out.println("Introduzca el recinto del evento: ");
                        recinto = br.readLine();
                        System.out.println("Introduzca el id del espectáculo: ");
                        idEspectaculo = br.readLine();
                        ejecutarConsulta(stmt, "SELECT * FROM vista_aforo_evento WHERE fecha = '" + fecha + "' and recinto_id = '" + recinto + "' and espectaculo_id  = " + idEspectaculo);
                        break;

                    case "4":
                        ejecutarConsulta(stmt, "SELECT * FROM vista_beneficios_evento");
                        break;

                    case "5":
                        System.out.println("Introduzca la fecha del evento: ");
                        fecha = br.readLine();
                        System.out.println("Introduzca el recinto del evento: ");
                        recinto = br.readLine();
                        System.out.println("Introduzca el id del espectáculo: ");
                        idEspectaculo = br.readLine();
                        ejecutarConsulta(stmt, "SELECT * FROM vista_beneficios_evento WHERE fecha = '" + fecha + "' and recinto_id = '" + recinto + "' and espectaculo_id = " + idEspectaculo);
                        break; 

                    case "6":
                        System.out.println("Introduzca el nombre del espectáculo: ");
                        nombreEspectaculo = br.readLine();
                        System.out.println(("Introduzca el tipo de espectáculo(Deportivo/Musical/Educativo): "));
                        tipoEspectaculo = br.readLine();
                        stmt.executeUpdate("INSERT INTO Espectaculo (nombre, tipo) VALUES ('" + nombreEspectaculo + "', '" + tipoEspectaculo + "');");
                        System.out.println("Introduzca los tipos de usuario separados por comas (ej. Adulto,Parado,Jubilado): ");
                        String tiposStr = br.readLine();
                        String[] tiposUsuario = tiposStr.split(",");

                        // Inserta cada tipo de usuario en la tabla
                        for (String tipo : tiposUsuario) {
                            tipo = tipo.trim();
                            stmt.executeUpdate("INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) " +
                                            "VALUES (LAST_INSERT_ID(), '" + tipo + "');");
                        }
                        System.out.println("Espectáculo creado correctamente.");
                        break;

                    case "7":
                        System.out.println("Introduzca la fecha del evento: ");
                        fecha = br.readLine();
                        System.out.println("Introduzca la fecha en la que acabará: ");
                        fechaFinEvento = br.readLine();
                        System.out.println("Introduzca el recinto en el que se celebrará: ");
                        recinto = br.readLine();
                        System.out.println("Introduzca el id del espectáculo al que pertenece: ");
                        idEspectaculo = br.readLine();
                        stmt.executeUpdate("INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin) VALUES (" +
                        "'" + fecha + "', '" + recinto + "', '" + idEspectaculo + "', 'abierto', '" + fechaFinEvento + "');");
                        System.out.println("Evento creado con éxito.");
                        break;

                    case "8":
                        System.out.println("Introduzca la fecha del evento que desea modificar:");
                        fecha = br.readLine();
                        
                        System.out.println("Introduzca el recinto del evento:");
                        recinto = br.readLine();
                        
                        System.out.println("Introduzca el ID del espectáculo:");
                        idEspectaculo = br.readLine();
                        
                        System.out.println("Introduzca el nuevo estado (Abierto, Cerrado o Finalizado):");
                        String nuevoEstado = br.readLine();
                        
                        System.out.println("Introduzca la nueva fecha de finalización del evento:");
                        String nuevaFechaFin = br.readLine();

                        stmt.executeUpdate("UPDATE Evento SET estado = '" + nuevoEstado + "', fecha_fin = '" + nuevaFechaFin + "' " +
                            "WHERE fecha = '" + fecha + "' AND recinto_id = '" + recinto + "' AND espectaculo_id = '" + idEspectaculo + "';");
                        System.out.println("Evento modificacido con éxito.");
                        break;

                    case "9":
                        System.out.println("Introduzca la fecha del evento que desea eliminar:");
                        fecha = br.readLine();
                    
                        System.out.println("Introduzca el recinto del evento:");
                        recinto = br.readLine();
                    
                        System.out.println("Introduzca el ID del espectáculo:");
                        idEspectaculo = br.readLine();
                    
                        stmt.executeUpdate("DELETE FROM Evento WHERE fecha = '" + fecha + "' AND recinto_id = '" + recinto + "' AND espectaculo_id = '" + idEspectaculo + "';");
                        System.out.println("Evento eliminado con éxito");
                        break;
                        
                    case "10":
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

    private static void ejecutarConsulta(Statement stmt, String query) throws SQLException {
        ResultSet rs = stmt.executeQuery(query);
        ResultSetMetaData meta = rs.getMetaData();
        int columnas = meta.getColumnCount();
    
        System.out.println("\nResultados:");
        while (rs.next()) {
            for (int i = 1; i <= columnas; i++) {
                System.out.print(meta.getColumnName(i) + ": " + rs.getString(i) + "\t");
            }
            System.out.println();
        }
    }
    
}

