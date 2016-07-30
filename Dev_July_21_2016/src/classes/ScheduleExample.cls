public class ScheduleExample implements schedulable{
    public void execute(SchedulableContext ct) {
        BatchApexExample2 aa = new BatchApexExample2();
        Database.executeBatch(aa);
    }

}