.class Lcom/twitter/android/ag;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/BackupCodeFragment;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/twitter/android/BackupCodeFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/twitter/android/ag;->a:Lcom/twitter/android/BackupCodeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 379
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/ag;->b:Ljava/lang/ref/WeakReference;

    .line 380
    iput-object p3, p0, Lcom/twitter/android/ag;->c:Ljava/lang/String;

    .line 381
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 4

    .prologue
    .line 399
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 400
    iget-object v0, p0, Lcom/twitter/android/ag;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 401
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 402
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-static {v1, v2, v3}, Lcom/twitter/media/util/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_0

    .line 405
    :try_start_0
    invoke-static {v0}, Lcom/twitter/media/util/j;->a(Landroid/content/Context;)Lcom/twitter/media/util/j;

    move-result-object v0

    new-instance v2, Lcom/twitter/library/media/util/o;

    invoke-direct {v2, v1}, Lcom/twitter/library/media/util/o;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/twitter/media/util/j;->b(Lcom/twitter/media/util/k;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/twitter/platform/p;->b(Ljava/io/File;)Z

    .line 411
    :goto_0
    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/twitter/platform/p;->b(Ljava/io/File;)Z

    throw v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ag;->a:Lcom/twitter/android/BackupCodeFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/BackupCodeFragment;->a(Ljava/io/File;)V

    .line 420
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/ag;->a([Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/twitter/android/ag;->a(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/twitter/android/ag;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 387
    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    .line 389
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 390
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/twitter/android/ag;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 392
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 393
    iget-object v0, p0, Lcom/twitter/android/ag;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 395
    :cond_0
    return-void
.end method
