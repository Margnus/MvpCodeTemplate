package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sunland.core.net.NetEnv;
import com.sunland.core.net.SunLandNetManager;
import com.sunland.core.ui.mvp.lce.MvpLceFragment;
import com.sunland.ehr.api.EhrApi;
import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * @author:
 * @created on: 2018/10/12 14:38
 * @description:
 */
public class ${fragmentName} extends MvpLceFragment<${resultName}.${entityName}, ${viewName}, ${presenterName}> implements ${viewName}{

    private Unbinder unbinder;

    public static ${fragmentName} newInstance() {
        ${fragmentName} fragment = new ${fragmentName}();
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.${layoutName}, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        unbinder = ButterKnife.bind(view);
        initView();
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
    public void onDestroyView() {
        super.onDestroyView();
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
