.class Lcom/twitter/android/settings/ae;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/TweetSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/settings/TweetSettingsActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/twitter/android/settings/ae;->a:Lcom/twitter/android/settings/TweetSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/settings/TweetSettingsActivity;Lcom/twitter/android/settings/ad;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/twitter/android/settings/ae;-><init>(Lcom/twitter/android/settings/TweetSettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/android/settings/ae;->a:Lcom/twitter/android/settings/TweetSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/settings/ae;->a:Lcom/twitter/android/settings/TweetSettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Lcom/twitter/android/settings/TweetSettingsActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/settings/ae;->a:Lcom/twitter/android/settings/TweetSettingsActivity;

    .line 116
    invoke-static {v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->b(Lcom/twitter/android/settings/TweetSettingsActivity;)Z

    move-result v1

    .line 115
    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Landroid/content/Context;JZ)V

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/ae;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
