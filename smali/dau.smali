.class public interface abstract Ldau;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final f:Ldau;

.field public static final g:Ldau;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ldav;

    invoke-direct {v0}, Ldav;-><init>()V

    sput-object v0, Ldau;->f:Ldau;

    .line 19
    new-instance v0, Ldaw;

    invoke-direct {v0}, Ldaw;-><init>()V

    sput-object v0, Ldau;->g:Ldau;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
