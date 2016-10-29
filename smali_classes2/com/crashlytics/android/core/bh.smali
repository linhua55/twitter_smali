.class final Lcom/crashlytics/android/core/bh;
.super Lorg/json/JSONObject;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/cl;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/cl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/crashlytics/android/core/bh;->a:Lcom/crashlytics/android/core/cl;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/crashlytics/android/core/bh;->a:Lcom/crashlytics/android/core/cl;

    iget-object v1, v1, Lcom/crashlytics/android/core/cl;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/bh;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v0, "userName"

    iget-object v1, p0, Lcom/crashlytics/android/core/bh;->a:Lcom/crashlytics/android/core/cl;

    iget-object v1, v1, Lcom/crashlytics/android/core/cl;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/bh;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v0, "userEmail"

    iget-object v1, p0, Lcom/crashlytics/android/core/bh;->a:Lcom/crashlytics/android/core/cl;

    iget-object v1, v1, Lcom/crashlytics/android/core/cl;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/bh;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-void
.end method
