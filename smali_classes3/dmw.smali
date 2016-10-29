.class Ldmw;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ldmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ldmv;

    invoke-direct {v0}, Ldmv;-><init>()V

    sput-object v0, Ldmw;->a:Ldmv;

    return-void
.end method

.method static synthetic a()Ldmv;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Ldmw;->a:Ldmv;

    return-object v0
.end method
