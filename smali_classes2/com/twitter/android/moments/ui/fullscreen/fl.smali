.class Lcom/twitter/android/moments/ui/fullscreen/fl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/dt;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/fk;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fk;Lcom/twitter/android/moments/ui/fullscreen/dt;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fl;->b:Lcom/twitter/android/moments/ui/fullscreen/fk;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fl;->a:Lcom/twitter/android/moments/ui/fullscreen/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fl;->a:Lcom/twitter/android/moments/ui/fullscreen/dt;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/dt;->b()V

    .line 30
    return-void
.end method
