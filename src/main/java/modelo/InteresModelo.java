package modelo;

/**
 *
 * @author Carlos Torres
 */
public class InteresModelo {

    private String nombreCliente;
    private int edadCliente;
    private float montoInvertir;
    private int anosSolicitud;
    private float calculoInteres;
    private float resultadoFinal;

    public String getNombreCliente() {
        return nombreCliente;
    }

    public int getEdadCliente() {
        return edadCliente;
    }

    public float getMontoInvertir() {
        return montoInvertir;
    }

    public int getAnosSolicitud() {
        return anosSolicitud;
    }

    public float getCalculoInteres() {
        if (anosSolicitud != 0) {
            calculoInteres = (float) ((this.montoInvertir * 0.15 * this.anosSolicitud));
        } else {
            calculoInteres = 0;
        }
        return calculoInteres;
    }

    public float getResultadoFinal() {
        float valorFinal = (montoInvertir + calculoInteres);
        return valorFinal;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public void setEdadCliente(int edadCliente) {
        this.edadCliente = edadCliente;
    }

    public void setmontoInvertir(float montoInvertir) {
        this.montoInvertir = montoInvertir;
    }

    public void setAnosSolicitud(int anosSolicitud) {
        this.anosSolicitud = anosSolicitud;
    }

    public void setCalculoInteres(float calculoInteres) {
        this.calculoInteres = calculoInteres;
    }

    public void setResultadoFinal(float resultadoFinal) {
        this.resultadoFinal = resultadoFinal;
    }
}
