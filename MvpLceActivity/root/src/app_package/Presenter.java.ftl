package ${packageName};

import com.sunland.core.ui.mvp.lce.MvpLceRxPresenter;
import com.sunland.ehr.api.EhrApi;

/**
 * @author:
 * @created on: 2018/10/12 14:38
 * @description:
 */
public class ${presenterName} extends MvpLceRxPresenter<${viewName}, ${resultName}, ${resultName}.${entityName}> {

    EhrApi ehrApi;

    public ${presenterName}(EhrApi ehrApi) {
        this.ehrApi = ehrApi;
    }

}
