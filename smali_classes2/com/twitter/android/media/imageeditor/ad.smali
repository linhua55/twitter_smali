.class abstract Lcom/twitter/android/media/imageeditor/ad;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/twitter/media/filters/Filters;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1029
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/ad;->b:Ljava/lang/ref/WeakReference;

    .line 1030
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/android/media/imageeditor/b;)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/twitter/android/media/imageeditor/ad;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/twitter/media/filters/Filters;
    .locals 4

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/ad;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1035
    if-eqz v0, :cond_1

    .line 1036
    new-instance v1, Lcom/twitter/media/filters/Filters;

    invoke-direct {v1}, Lcom/twitter/media/filters/Filters;-><init>()V

    .line 1037
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    .line 1038
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 1040
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/media/filters/Filters;->a(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1041
    if-eqz v0, :cond_0

    .line 1047
    invoke-static {v2}, Ldbt;->a(Landroid/content/res/AssetFileDescriptor;)V

    move-object v0, v1

    .line 1050
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/twitter/media/filters/Filters;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    invoke-static {v2}, Ldbt;->a(Landroid/content/res/AssetFileDescriptor;)V

    .line 1050
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    invoke-static {v2}, Ldbt;->a(Landroid/content/res/AssetFileDescriptor;)V

    throw v0
.end method

.method protected abstract a(Lcom/twitter/media/filters/Filters;)V
.end method

.method protected b(Lcom/twitter/media/filters/Filters;)V
    .locals 0

    .prologue
    .line 1058
    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {p1}, Lcom/twitter/media/filters/Filters;->b()V

    .line 1061
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/ad;->a([Ljava/lang/Void;)Lcom/twitter/media/filters/Filters;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1025
    check-cast p1, Lcom/twitter/media/filters/Filters;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/ad;->b(Lcom/twitter/media/filters/Filters;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1025
    check-cast p1, Lcom/twitter/media/filters/Filters;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/ad;->a(Lcom/twitter/media/filters/Filters;)V

    return-void
.end method
