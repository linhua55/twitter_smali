.class final Ldmb;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Z

.field final b:Lrx/ap;


# direct methods
.method constructor <init>(ZLrx/ap;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Ldmb;->a:Z

    .line 35
    iput-object p2, p0, Ldmb;->b:Lrx/ap;

    .line 36
    return-void
.end method


# virtual methods
.method a()Ldmb;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ldmb;

    const/4 v1, 0x1

    iget-object v2, p0, Ldmb;->b:Lrx/ap;

    invoke-direct {v0, v1, v2}, Ldmb;-><init>(ZLrx/ap;)V

    return-object v0
.end method

.method a(Lrx/ap;)Ldmb;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ldmb;

    iget-boolean v1, p0, Ldmb;->a:Z

    invoke-direct {v0, v1, p1}, Ldmb;-><init>(ZLrx/ap;)V

    return-object v0
.end method
