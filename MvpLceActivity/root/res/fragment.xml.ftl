<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <include
        android:id="@+id/toolbar"
        layout="@layout/toolbar" />

    <FrameLayout
        android:layout_below="@+id/toolbar"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <include layout="@layout/view_loading" />

        <include layout="@layout/view_error" />

        <LinearLayout
            android:id="@+id/contentView"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="vertical">

          <!-- 界面布局 -->
        </LinearLayout>
    </FrameLayout>

</RelativeLayout>
