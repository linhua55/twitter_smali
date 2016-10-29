.class Lalh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/dx;


# instance fields
.field final synthetic a:Lalg;


# direct methods
.method constructor <init>(Lalg;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lalh;->a:Lalg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lalh;->a:Lalg;

    iget-object v0, v0, Lalg;->b:Lald;

    invoke-static {v0}, Lald;->b(Lald;)Lalc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lalc;->b(Z)V

    .line 113
    return-void
.end method
