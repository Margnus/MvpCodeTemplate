package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.sunland.core.ui.mvp.MvpActivity;
import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * @author:
 * @created on: 2018/10/12 14:38
 * @description:
 */
public class ${activityName} extends MvpActivity<${viewName}, ${presenterName}> implements ${viewName}{

    private Unbinder unbinder;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        unbinder = ButterKnife.bind(this);
        initView();
    }

    private void initView() {

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
        presenter = new ${presenterName}();
        return presenter;
    }
}
