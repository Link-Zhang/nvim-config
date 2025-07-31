public class HelloWorld {
  private String name = "World";

  public void name() {
    HelloWorld helloWorld = new HelloWorld();
    helloWorld.greetings();
  }

  public void greetings() {
    System.out.println("Hello," + name);
  }

  public static void main(String[] args) {
    HelloWorld helloWorld = new HelloWorld();
    helloWorld.greetings();
    System.out.println();
  }
}
