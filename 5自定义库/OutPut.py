from robot.libraries import BuiltIn

class OutPut:

    """
    这是一个输出变量值的第三方库
    """

    ROBOT_LIBRARY_VERSION = 1.0
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self,a=None,b=None):
        BuiltIn.logger.info(a)
        BuiltIn.logger.info(b)

    def out_put_log(self,c,d):
        BuiltIn.logger.info(c)
        BuiltIn.logger.info(d)

