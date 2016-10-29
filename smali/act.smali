.class public final Lact;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lacr;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lacr;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lact;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lacr;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lact;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lact;->b:Lddo;

    .line 30
    sget-boolean v0, Lact;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_1
    iput-object p2, p0, Lact;->c:Lden;

    .line 32
    return-void
.end method

.method public static a(Lddo;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lacr;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;>;)",
            "Ldagger/internal/c",
            "<",
            "Lacr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lact;

    invoke-direct {v0, p0, p1}, Lact;-><init>(Lddo;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lacr;
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lact;->b:Lddo;

    new-instance v2, Lacr;

    iget-object v0, p0, Lact;->c:Lden;

    .line 39
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/object/c;

    invoke-direct {v2, v0}, Lacr;-><init>(Lcom/twitter/util/object/c;)V

    .line 36
    invoke-static {v1, v2}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacr;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lact;->a()Lacr;

    move-result-object v0

    return-object v0
.end method
