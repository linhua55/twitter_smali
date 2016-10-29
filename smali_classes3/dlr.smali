.class Ldlr;
.super Ldlq;
.source "Twttr"


# static fields
.field private static final a:Ldlr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ldlr;

    invoke-direct {v0}, Ldlr;-><init>()V

    sput-object v0, Ldlr;->a:Ldlr;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldlq;-><init>()V

    return-void
.end method

.method public static a()Ldlq;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ldlr;->a:Ldlr;

    return-object v0
.end method
