package android.support.design.widget;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.AppCompatDialogFragment;

/* compiled from: Twttr */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getActivity(), getTheme());
    }
}
