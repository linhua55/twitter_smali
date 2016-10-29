.class Lyh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lxz;


# direct methods
.method constructor <init>(Lxz;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lyh;->a:Lxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lyh;->a:Lxz;

    iget-object v0, v0, Lxz;->o:Lcom/twitter/android/by;

    iget-object v1, p0, Lyh;->a:Lxz;

    iget v1, v1, Lxz;->c:I

    invoke-interface {v0, v1}, Lcom/twitter/android/by;->a(I)Z

    move-result v0

    return v0
.end method
