package com.miemprea;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class AppTest {

    @Test
    public void testSumar() {
        App app = new App();
        int resultado = app.sumar(2, 3);
        assertEquals(5, resultado);
    }
}
