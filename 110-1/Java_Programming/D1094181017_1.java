//Auther: D1094181017 張育丞
//Datetime: 20220108
abstract class ACar{
    protected float spd;
    public abstract void spdUpTo(double nSpd);
}

interface Boat{
    public void mvTo(double nPos);
}

class BoatCar extends ACar implements Boat{
    private int wheelNum = 4;
    public void spdUpTo(double nSpd){};
    public void mvTo(double nPos){}
}