.class Lcom/twitter/android/moments/ui/animation/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcvw;

.field final synthetic b:Lcom/twitter/android/moments/ui/animation/r;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/animation/r;Lcvw;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/twitter/android/moments/ui/animation/s;->b:Lcom/twitter/android/moments/ui/animation/r;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/animation/s;->a:Lcvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/animation/s;->a:Lcvw;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/animation/s;->a:Lcvw;

    invoke-interface {v0}, Lcvw;->a()V

    .line 98
    :cond_0
    return-void
.end method
