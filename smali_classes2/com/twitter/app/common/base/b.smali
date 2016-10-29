.class public final Lcom/twitter/app/common/base/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lddo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lddo",
        "<",
        "Lcom/twitter/app/common/base/BaseApplication;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lauq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/app/common/base/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/base/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/app/common/base/BaseApplication;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseApplication;",
            "Lden",
            "<",
            "Lauq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p1}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauq;

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseApplication;->a:Lauq;

    .line 53
    return-void
.end method

.method public static b(Lcom/twitter/app/common/base/BaseApplication;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseApplication;",
            "Lden",
            "<",
            "Laup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laup;

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseApplication;->b:Laup;

    .line 58
    return-void
.end method

.method public static c(Lcom/twitter/app/common/base/BaseApplication;Lden;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseApplication;",
            "Lden",
            "<",
            "Laut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/app/common/base/BaseApplication;->c:Lden;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/base/BaseApplication;)V
    .locals 2

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/b;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauq;

    iput-object v0, p1, Lcom/twitter/app/common/base/BaseApplication;->a:Lauq;

    .line 46
    iget-object v0, p0, Lcom/twitter/app/common/base/b;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laup;

    iput-object v0, p1, Lcom/twitter/app/common/base/BaseApplication;->b:Laup;

    .line 47
    iget-object v0, p0, Lcom/twitter/app/common/base/b;->d:Lden;

    iput-object v0, p1, Lcom/twitter/app/common/base/BaseApplication;->c:Lden;

    .line 48
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/twitter/app/common/base/BaseApplication;

    invoke-virtual {p0, p1}, Lcom/twitter/app/common/base/b;->a(Lcom/twitter/app/common/base/BaseApplication;)V

    return-void
.end method
