.class public final Lcom/twitter/android/smartfollow/followpeople/g;
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
        "Lcom/twitter/android/smartfollow/followpeople/e;",
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
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/twitter/android/smartfollow/followpeople/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/smartfollow/followpeople/g;->a:Z

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
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/twitter/android/smartfollow/followpeople/g;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/smartfollow/followpeople/g;->b:Lddo;

    .line 24
    sget-boolean v0, Lcom/twitter/android/smartfollow/followpeople/g;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/smartfollow/followpeople/g;->c:Lden;

    .line 26
    return-void
.end method

.method public static a(Lddo;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/android/smartfollow/followpeople/g;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/smartfollow/followpeople/g;-><init>(Lddo;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/smartfollow/followpeople/e;
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/g;->b:Lddo;

    new-instance v2, Lcom/twitter/android/smartfollow/followpeople/e;

    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/g;->c:Lden;

    .line 31
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/StateSaver;

    invoke-direct {v2, v0}, Lcom/twitter/android/smartfollow/followpeople/e;-><init>(Lcom/twitter/app/common/util/StateSaver;)V

    .line 30
    invoke-static {v1, v2}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/e;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/g;->a()Lcom/twitter/android/smartfollow/followpeople/e;

    move-result-object v0

    return-object v0
.end method
