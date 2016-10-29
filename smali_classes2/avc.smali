.class public Lavc;
.super Lauz;
.source "Twttr"

# interfaces
.implements Lavn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauz",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lavn;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/support/v4/app/LoaderManager;

.field private final c:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/bt;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/bt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lauz;-><init>()V

    .line 26
    new-instance v0, Lavd;

    invoke-direct {v0, p0}, Lavd;-><init>(Lavc;)V

    iput-object v0, p0, Lavc;->d:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 47
    iput-object p1, p0, Lavc;->b:Landroid/support/v4/app/LoaderManager;

    .line 48
    iput p2, p0, Lavc;->a:I

    .line 49
    iput-object p3, p0, Lavc;->c:Lcom/twitter/util/object/i;

    .line 50
    return-void
.end method

.method static synthetic a(Lavc;)Lcom/twitter/util/object/i;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lavc;->c:Lcom/twitter/util/object/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lavc;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lavc;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lavc;->d:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 61
    return-void
.end method

.method public a(Lavg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavg",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Lauz;->a(Lavg;)V

    .line 55
    iget-object v0, p0, Lavc;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lavc;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lavc;->d:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 56
    return-void
.end method
