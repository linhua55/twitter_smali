.class Ldll;
.super Ldlk;
.source "Twttr"


# static fields
.field private static a:Ldll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ldll;

    invoke-direct {v0}, Ldll;-><init>()V

    sput-object v0, Ldll;->a:Ldll;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldlk;-><init>()V

    return-void
.end method

.method public static a()Ldlk;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ldll;->a:Ldll;

    return-object v0
.end method
