.class final Ldlz;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Z

.field final b:Lrx/ap;


# direct methods
.method constructor <init>(ZLrx/ap;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Ldlz;->a:Z

    .line 37
    iput-object p2, p0, Ldlz;->b:Lrx/ap;

    .line 38
    return-void
.end method


# virtual methods
.method a()Ldlz;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ldlz;

    const/4 v1, 0x1

    iget-object v2, p0, Ldlz;->b:Lrx/ap;

    invoke-direct {v0, v1, v2}, Ldlz;-><init>(ZLrx/ap;)V

    return-object v0
.end method

.method a(Lrx/ap;)Ldlz;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ldlz;

    iget-boolean v1, p0, Ldlz;->a:Z

    invoke-direct {v0, v1, p1}, Ldlz;-><init>(ZLrx/ap;)V

    return-object v0
.end method
