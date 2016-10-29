.class Lzc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lzb;


# direct methods
.method constructor <init>(Lzb;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lzc;->a:Lzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lzc;->a:Lzb;

    iget-object v0, v0, Lzb;->o:Lcom/twitter/android/by;

    iget-object v1, p0, Lzc;->a:Lzb;

    iget-object v1, v1, Lzb;->b:Lbnt;

    iget v1, v1, Lbnt;->g:I

    invoke-interface {v0, v1}, Lcom/twitter/android/by;->a(I)Z

    move-result v0

    return v0
.end method
