.class final Laqw;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Laqu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Laqu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqu;-><init>(Laqv;)V

    sput-object v0, Laqw;->a:Laqu;

    return-void
.end method

.method static synthetic a()Laqu;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Laqw;->a:Laqu;

    return-object v0
.end method
