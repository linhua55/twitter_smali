.class public final Ldmi;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static volatile a:Ldmg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ldmh;

    invoke-direct {v0}, Ldmh;-><init>()V

    sput-object v0, Ldmi;->a:Ldmg;

    return-void
.end method

.method private static a()Ldmg;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ldmi;->a:Ldmg;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Ldmi;->a()Ldmg;

    move-result-object v0

    invoke-interface {v0, p0}, Ldmg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xspotlivin/analytics/summary/d;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ldmi;->a()Ldmg;

    move-result-object v0

    invoke-interface {v0, p0}, Ldmg;->a(Lcom/xspotlivin/analytics/summary/d;)V

    .line 56
    return-void
.end method
