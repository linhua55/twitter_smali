.class public interface abstract Lbvk;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lbvk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lbvl;

    invoke-direct {v0}, Lbvl;-><init>()V

    sput-object v0, Lbvk;->a:Lbvk;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/twitter/model/av/AVMedia;)Ljava/lang/String;
.end method

.method public abstract b()J
.end method
