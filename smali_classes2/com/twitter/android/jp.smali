.class Lcom/twitter/android/jp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/av/video/VideoContainerHost;

.field final synthetic b:Lcom/twitter/android/jo;


# direct methods
.method constructor <init>(Lcom/twitter/android/jo;Lcom/twitter/android/av/video/VideoContainerHost;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/android/jp;->b:Lcom/twitter/android/jo;

    iput-object p2, p0, Lcom/twitter/android/jp;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/jp;->b:Lcom/twitter/android/jo;

    invoke-static {v0}, Lcom/twitter/android/jo;->a(Lcom/twitter/android/jo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/jp;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 133
    return-void
.end method
