.class public Laug;
.super Laui;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lauc;",
        ">",
        "Laui",
        "<TA;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lauk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauk",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lauh;

    invoke-direct {v0}, Lauh;-><init>()V

    sput-object v0, Laug;->c:Lauk;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/twitter/app/common/util/t;",
            ">(TC;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Laug;->c:Lauk;

    invoke-direct {p0, p1, p2, p3, v0}, Laui;-><init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V

    .line 32
    return-void
.end method
