.class public Lbs;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static volatile a:Lbu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lbt;

    invoke-direct {v0}, Lbt;-><init>()V

    sput-object v0, Lbs;->a:Lbu;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lbs;->a:Lbu;

    invoke-interface {v0, p0}, Lbu;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
