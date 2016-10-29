.class Lyd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxz;


# direct methods
.method constructor <init>(Lxz;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lyd;->a:Lxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lyd;->a:Lxz;

    iget-object v1, v0, Lxz;->o:Lcom/twitter/android/by;

    iget-object v0, p0, Lyd;->a:Lxz;

    iget-object v0, v0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    iget-wide v2, v0, Lcom/twitter/model/dms/l;->d:J

    invoke-interface {v1, v2, v3}, Lcom/twitter/android/by;->a_(J)V

    .line 248
    return-void
.end method
