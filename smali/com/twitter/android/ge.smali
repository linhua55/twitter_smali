.class Lcom/twitter/android/ge;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/twitter/android/ge;->a:Lcom/twitter/android/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 1874
    if-nez p1, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/twitter/android/ge;->a:Lcom/twitter/android/GalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/GalleryActivity;->c(Z)V

    .line 1877
    :cond_0
    return-void
.end method
