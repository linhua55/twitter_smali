.class public Lcom/twitter/android/initialization/NotificationsSettingsMigratorInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/NotificationsSettingsMigratorInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p1}, Lcom/twitter/library/util/x;->a(Landroid/content/Context;)Lcom/twitter/library/util/x;

    .line 24
    return-void
.end method
