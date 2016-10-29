.class public Lcom/twitter/platform/n;
.super Lcom/twitter/util/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/x",
        "<",
        "Lcom/twitter/platform/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/platform/n;


# instance fields
.field private b:Lcom/twitter/platform/TwRadioType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/platform/n;

    invoke-direct {v0}, Lcom/twitter/platform/n;-><init>()V

    sput-object v0, Lcom/twitter/platform/n;->a:Lcom/twitter/platform/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/util/x;-><init>()V

    .line 15
    sget-object v0, Lcom/twitter/platform/TwRadioType;->b:Lcom/twitter/platform/TwRadioType;

    iput-object v0, p0, Lcom/twitter/platform/n;->b:Lcom/twitter/platform/TwRadioType;

    return-void
.end method

.method public static a()Lcom/twitter/platform/n;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/twitter/platform/n;->a:Lcom/twitter/platform/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/platform/q;)V
    .locals 1

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/twitter/platform/q;->a()Lcom/twitter/platform/TwRadioType;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/platform/n;->b:Lcom/twitter/platform/TwRadioType;

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/twitter/platform/q;

    invoke-virtual {p0, p1}, Lcom/twitter/platform/n;->a(Lcom/twitter/platform/q;)V

    return-void
.end method

.method public b()Lcom/twitter/platform/TwRadioType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/platform/n;->b:Lcom/twitter/platform/TwRadioType;

    return-object v0
.end method
