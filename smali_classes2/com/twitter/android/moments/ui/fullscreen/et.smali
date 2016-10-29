.class Lcom/twitter/android/moments/ui/fullscreen/et;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/er;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/et;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/et;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/et;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/er;->b(Lcom/twitter/android/moments/ui/fullscreen/er;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/android/moments/ui/fullscreen/er;J)V

    .line 124
    return-void
.end method
