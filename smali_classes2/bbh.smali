.class public Lbbh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbbe;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbbh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lbbb;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbbh;->c(Lbbb;)V

    .line 20
    invoke-virtual {p1}, Lbbb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbb;

    .line 21
    invoke-direct {p0, v0}, Lbbh;->b(Lbbb;)V

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private c(Lbbb;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lbbh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lbbb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lbbb;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lbbh;->b(Lbbb;)V

    .line 16
    return-void
.end method
