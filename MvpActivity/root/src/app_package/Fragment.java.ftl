package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sunland.core.ui.mvp.MvpFragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * @author:
 * @created on: 2018/10/12 14:38
 * @description:
 */
public class ${fragmentName} extends MvpFragment<${viewName}, ${presenterName}> implements ${viewName}{

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
    public void onDestroyView() {
        super.onDestroyView();
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
