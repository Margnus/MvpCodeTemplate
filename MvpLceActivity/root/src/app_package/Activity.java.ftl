package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;

import com.sunland.core.net.NetEnv;
import com.sunland.core.net.SunLandNetManager;
import com.sunland.core.ui.mvp.lce.MvpLceActivity;
import com.sunland.ehr.api.EhrApi;
import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * @author:
 * @created on: 2018/10/12 14:38
 * @description:
 */
public class ${activityName} extends MvpLceActivity<${resultName}.${entityName}, ${viewName}, ${presenterName}> implements ${viewName}{

    private Unbinder unbinder;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        unbinder = ButterKnife.bind(this);
        initView();
        loadData(false);
    }

    private void initView() {

    }

    @Override
    public void loadData(boolean pullToRefresh) {

    }

    @Override
    public void setData(${resultName}.${entityName} data) {

    }

    @Override
    protected int initContentLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (unbinder != null) {
            unbinder.unbind();
        }
    }

    @NonNull
    @Override
    public ${presenterName} createPresenter() {
        presenter = new ${presenterName}(SunLandNetManager.createService(EhrApi.class, NetEnv.getApprovDomain()));
        return presenter;
    }
}
