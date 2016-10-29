.class public abstract Lcom/twitter/app/common/app/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/app/b;


# static fields
.field private static a:Lcom/twitter/util/object/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/b",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            "Lcom/twitter/app/common/app/o;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/twitter/app/common/account/UserIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/twitter/app/common/account/UserIdentifier;->a:Lcom/twitter/app/common/account/UserIdentifier;

    sput-object v0, Lcom/twitter/app/common/app/o;->b:Lcom/twitter/app/common/account/UserIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/app/o;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/twitter/app/common/app/o;->a:Lcom/twitter/util/object/b;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/object/b;

    invoke-virtual {v0, p0}, Lcom/twitter/util/object/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/o;

    return-object v0
.end method

.method public static a(Lcom/twitter/util/object/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            "Lcom/twitter/app/common/app/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/util/object/b;

    invoke-direct {v0, p0}, Lcom/twitter/util/object/b;-><init>(Lcom/twitter/util/object/c;)V

    sput-object v0, Lcom/twitter/app/common/app/o;->a:Lcom/twitter/util/object/b;

    .line 52
    return-void
.end method

.method public static b(Lcom/twitter/app/common/account/UserIdentifier;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/twitter/app/common/app/o;->a:Lcom/twitter/util/object/b;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/object/b;

    invoke-virtual {v0, p0}, Lcom/twitter/util/object/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/twitter/app/common/app/o;->b:Lcom/twitter/app/common/account/UserIdentifier;

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/account/UserIdentifier;->a(Lcom/twitter/app/common/account/UserIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/twitter/app/common/account/UserIdentifier;->a:Lcom/twitter/app/common/account/UserIdentifier;

    sput-object v0, Lcom/twitter/app/common/app/o;->b:Lcom/twitter/app/common/account/UserIdentifier;

    .line 48
    :cond_0
    return-void
.end method

.method public static c(Lcom/twitter/app/common/account/UserIdentifier;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/twitter/app/common/app/o;->b:Lcom/twitter/app/common/account/UserIdentifier;

    .line 56
    return-void
.end method

.method public static x()Lcom/twitter/app/common/app/o;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/twitter/app/common/app/o;->b:Lcom/twitter/app/common/account/UserIdentifier;

    invoke-static {v0}, Lcom/twitter/app/common/app/o;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/app/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/twitter/app/common/account/UserIdentifier;
.end method
