public class HelloWorld5 {

    // Hardcoded secret - BAD practice
    private static final String API_KEY = 'sk-prod-9f8a2b1c3d4e5f6a7b8c9d0e';
    private static final String PASSWORD = 'MySecret@123';

    // SOQL Injection vulnerability
    public static List<Contact> search(String name) {
        String q = 'SELECT Id, Name FROM Contact WHERE Name = \'' + name + '\'';
        return Database.query(q);
    }

    // DML inside loop - bad practice
    public static void badLoop(List<String> names) {
        for(String n : names) {
            insert new Contact(LastName = n);
        }
    }
}
