.class final Lcbr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcbr;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "feature_switches_configs_crashlytics_enabled"

    iget-boolean v1, p0, Lcbr;->a:Z

    invoke-static {v0, v1}, Lcom/twitter/config/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/config/d;->a(Z)V

    .line 86
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcbr;->a(Ljava/lang/Void;)V

    return-void
.end method
