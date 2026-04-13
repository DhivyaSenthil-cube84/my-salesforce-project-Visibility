public class HelloWorld {
    // UNSAFE - for testing scanners only
    private static final String SECRET = 'mypw123456';
    public static List search(String name) {
        String q = 'SELECT Id FROM Contact WHERE Name = \'' + name + '\'';
        return Database.query(q);
    }
}
