public class Main {

    public static void main(String[] args) {
        DynamicArray<String> a;
        a = new DynamicArray<>();
        a.add("1");
        a.add("2");
        System.out.println(a.atPos(0));
        System.out.println(a.atPos(1));
        System.out.println(a.atPos(2));
    }
}
