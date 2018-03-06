public class DynamicArray<T> {

    private T[] arr;
    private int length, capacity;

    DynamicArray(){
        length = 0;
        capacity = 1;
        arr = (T[]) new Object[1];
    }

    private void ensureCapacity(){
        if(length == capacity) {
            T[] tmp = (T[]) new Object[2 * capacity];
            capacity *= 2;
            System.arraycopy(arr, 0, tmp, 0, length);
            arr = tmp;
        }
    }
    public void add(T value){
        ensureCapacity();
        arr[length++] = value;
    }

    public T atPos(int i){
        if(i<length) return arr[i];
        else return null;
    }

    public int getLength() {
        return length;
    }

}
