public class Sum {
    public static void main(String[] args) {
        if (args.length != 2) {
            throw new RuntimeException("The number of arguments must be exactly two");
        }

        int from = Integer.valueOf(args[0]);
        int to = Integer.valueOf(args[1]);

        int sum = 0;
        for (int i = from; i <= to; i++) {
            sum += i;
        }

        System.out.println(sum);
    }
}
