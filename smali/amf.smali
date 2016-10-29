.class Lamf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lame;


# direct methods
.method constructor <init>(Lame;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lamf;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lamg;

    invoke-direct {v0, p0}, Lamg;-><init>(Lamf;)V

    .line 44
    iget-object v1, p0, Lamf;->a:Lame;

    invoke-static {v1}, Lame;->b(Lame;)Lcom/twitter/android/moments/ui/maker/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/bm;->a()Lrx/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 45
    return-void
.end method
