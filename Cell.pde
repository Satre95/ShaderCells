class Cell {

    int[] cells;
    int[] ruleSet = {0, 1, 0, 1, 1, 0, 1, 0};
    int w = 10;
    int generation = 0;


    Cell() {
        cells = new int[width];

        for (int i = 0; i < cells.length; i++) {
            cells[i] = 0;
        }

        cells[cells.length/2] = 1;
    }

    void generate() {
        int[] nextgen = new int[cells.length];
        for (int i = 1; i < cells.length-1; i++) {
            int left   = cells[i-1];
            int me     = cells[i];
            int right  = cells[i+1];
            nextgen[i] = rules(left, me, right);
        }
        cells = nextgen;

        for (int i = 0; i < cells.length; i++) {
            if (cells[i] == 1) fill(0);
            else               fill(255);
            // Set the y-location according to the generation.
            rect(i*w, generation*w, w, w);
        }

        generation++;
    }

    int rules (int a, int b, int c) {
        String s = "" + a + b + c;
        int index = Integer.parseInt(s, 2);
        return ruleSet[index];
    }
}