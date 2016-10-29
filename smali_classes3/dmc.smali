.class public final Ldmc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ldme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ldme;

    invoke-direct {v0}, Ldme;-><init>()V

    sput-object v0, Ldmc;->a:Ldme;

    return-void
.end method

.method public static a()Lrx/ap;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Ldlv;->c()Ldlv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ldje;)Lrx/ap;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Ldlv;->a(Ldje;)Ldlv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ldmd;

    invoke-direct {v0, p0}, Ldmd;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static b()Lrx/ap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Ldmc;->a:Ldme;

    return-object v0
.end method
