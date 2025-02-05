package task9.service;

import org.apache.log4j.Logger;
import task9.dao.StudentDao;
import task9.util.ApplicationException;

import javax.annotation.Resource;


public class StudentServiceImpl implements StudentService {
    private Logger logger =Logger.getLogger(StudentServiceImpl.class);
    @Resource(name = "studentDao")
    private StudentDao studentDao;

    @Override
    public Integer countService() {
        logger.info("countService()");
        Integer count =studentDao.count();
        logger.info(count);
        if (count==null){
            logger.info("countService() Exception");
            throw new ApplicationException("取值为null");
        }
        return count;
    }

    @Override
    public Integer countJobService() {
        logger.info("countJobService()");
        Integer countJob =studentDao.countJob();
        logger.info(countJob);
        if (countJob==null){
            logger.info("countJobService() Exception");
            throw new ApplicationException("取值为null");
        }
        return countJob;
    }
}
