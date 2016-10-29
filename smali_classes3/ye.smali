.class Lye;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxz;


# direct methods
.method constructor <init>(Lxz;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lye;->b:Lxz;

    iput-object p2, p0, Lye;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lye;->b:Lxz;

    iget-object v0, v0, Lxz;->m:Lcom/twitter/android/dm/aa;

    iget-object v1, p0, Lye;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/dm/aa;->d(Ljava/lang/String;)V

    .line 388
    return-void
.end method
