package com.twitter.android.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.preference.PreferenceManager;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.Toast;
import bdj;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.library.api.al;
import com.twitter.library.api.at;
import com.twitter.library.client.br;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* compiled from: Twttr */
public class TwitterAccessPreference extends DialogPreference implements OnClickListener, OnCheckedChangeListener {
    RadioGroup a;
    Button b;
    EditText c;
    EditText d;
    LinearLayout e;
    RadioGroup f;
    private final SharedPreferences g;

    public TwitterAccessPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDialogLayoutResource(2130969488);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        setSummary(a(defaultSharedPreferences));
        this.g = defaultSharedPreferences;
    }

    private String a(SharedPreferences sharedPreferences) {
        if (sharedPreferences.contains("twitter_access_config")) {
            return "Twitter Access is currently On";
        }
        return "Twitter Access is currently Off";
    }

    protected void showDialog(Bundle bundle) {
        super.showDialog(bundle);
        Dialog dialog = getDialog();
        if (dialog instanceof AlertDialog) {
            this.b = ((AlertDialog) dialog).getButton(-1);
            this.b.setOnClickListener(this);
        }
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        SharedPreferences sharedPreferences = this.g;
        boolean contains = sharedPreferences.contains("twitter_access_config");
        EditText editText = (EditText) view.findViewById(2131953342);
        editText.setText(sharedPreferences.getString("twitter_access_carrier", "twitter_test"));
        editText.setEnabled(contains);
        this.c = editText;
        EditText editText2 = (EditText) view.findViewById(2131953343);
        editText2.setText(Long.toString(br.a().d() / 1000));
        editText2.setEnabled(contains);
        this.d = editText2;
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131953339);
        radioGroup.setOnCheckedChangeListener(this);
        this.f = radioGroup;
        editText.setEnabled(contains);
        if (contains) {
            radioGroup.check(2131953341);
        } else {
            radioGroup.check(2131953340);
        }
        radioGroup.setOnCheckedChangeListener(new fv(this));
        this.a = radioGroup;
        this.e = (LinearLayout) view.findViewById(2131952446);
    }

    public void onClick(View view) {
        if (this.a.getCheckedRadioButtonId() == 2131953341) {
            br.a().a(1000 * Long.parseLong(this.d.getText().toString()));
            new fw().execute(new String[]{this.c.getText().toString()});
            return;
        }
        b("TwitterAccess is turned off");
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
        this.g.edit().remove("twitter_access_carrier").apply();
        bdj.a(getContext()).a(null, this.g);
        setSummary(a(this.g));
    }

    static al a(String str) {
        HttpURLConnection httpURLConnection;
        Closeable inputStream;
        HttpURLConnection httpURLConnection2;
        Closeable closeable;
        Throwable th;
        Throwable th2;
        Closeable closeable2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setReadTimeout(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
                httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        al alVar = at.f(at.a(inputStream)).b;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        cvi.a(inputStream);
                        return alVar;
                    } catch (MalformedURLException e) {
                        Closeable closeable3 = inputStream;
                        httpURLConnection2 = httpURLConnection;
                        closeable = closeable3;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        cvi.a(closeable);
                        return closeable2;
                    } catch (ProtocolException e2) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        cvi.a(inputStream);
                        return closeable2;
                    } catch (IOException e3) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        cvi.a(inputStream);
                        return closeable2;
                    } catch (Throwable th3) {
                        th = th3;
                        closeable2 = inputStream;
                        httpURLConnection2 = httpURLConnection;
                        th2 = th;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        cvi.a(closeable2);
                        throw th2;
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                cvi.a(closeable2);
                return closeable2;
            } catch (MalformedURLException e4) {
                httpURLConnection2 = httpURLConnection;
                closeable = closeable2;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                cvi.a(closeable);
                return closeable2;
            } catch (ProtocolException e5) {
                inputStream = closeable2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                cvi.a(inputStream);
                return closeable2;
            } catch (IOException e6) {
                inputStream = closeable2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                cvi.a(inputStream);
                return closeable2;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection2 = httpURLConnection;
                th2 = th;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                cvi.a(closeable2);
                throw th2;
            }
        } catch (MalformedURLException e7) {
            closeable = closeable2;
            httpURLConnection2 = closeable2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            cvi.a(closeable);
            return closeable2;
        } catch (ProtocolException e8) {
            inputStream = closeable2;
            httpURLConnection = closeable2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            cvi.a(inputStream);
            return closeable2;
        } catch (IOException e9) {
            inputStream = closeable2;
            httpURLConnection = closeable2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            cvi.a(inputStream);
            return closeable2;
        } catch (Throwable th5) {
            th2 = th5;
            httpURLConnection2 = closeable2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            cvi.a(closeable2);
            throw th2;
        }
    }

    private void b(String str) {
        Toast makeText = Toast.makeText(getContext(), str, 1);
        makeText.setGravity(48, 0, 0);
        makeText.show();
    }
}
