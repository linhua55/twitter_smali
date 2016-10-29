.class Lcom/twitter/android/media/imageeditor/ae;
.super Lcom/twitter/android/media/imageeditor/ad;
.source "Twttr"


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/media/imageeditor/EditImageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V
    .locals 2

    .prologue
    .line 1068
    invoke-virtual {p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/media/imageeditor/ad;-><init>(Landroid/content/Context;Lcom/twitter/android/media/imageeditor/b;)V

    .line 1069
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/ae;->a:Ljava/lang/ref/WeakReference;

    .line 1070
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/media/filters/Filters;)V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/ae;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;

    .line 1075
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p1}, Lcom/twitter/media/filters/Filters;->b()V

    .line 1077
    const/4 p1, 0x0

    .line 1079
    :cond_0
    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/media/filters/Filters;)V

    .line 1082
    :cond_1
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1064
    check-cast p1, Lcom/twitter/media/filters/Filters;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/ae;->a(Lcom/twitter/media/filters/Filters;)V

    return-void
.end method
