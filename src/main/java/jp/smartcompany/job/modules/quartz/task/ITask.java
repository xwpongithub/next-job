package jp.smartcompany.job.modules.quartz.task;

/**
 * @author Xiao Wenpeng
 */
public interface ITask {

    /**
     * 执行定时任务接口
     *
     * @param params   参数，多参数使用JSON数据
     */
    void run(String params);

}